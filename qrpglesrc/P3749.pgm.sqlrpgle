**free

ctl-opt dftactgrp(*no);

dcl-pi P3749;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P273.rpgleinc'
/copy 'qrpgleref/P911.rpgleinc'
/copy 'qrpgleref/P467.rpgleinc'

dcl-ds theTable extname('T336') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T336 LIMIT 1;

theCharVar = 'Hello from P3749';
dsply theCharVar;
callp localProc();
P273();
P911();
P467();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3749 in the procedure';
end-proc;