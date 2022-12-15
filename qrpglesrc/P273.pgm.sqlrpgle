**free

ctl-opt dftactgrp(*no);

dcl-pi P273;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P138.rpgleinc'
/copy 'qrpgleref/P223.rpgleinc'
/copy 'qrpgleref/P236.rpgleinc'

dcl-ds theTable extname('T1583') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1583 LIMIT 1;

theCharVar = 'Hello from P273';
dsply theCharVar;
callp localProc();
P138();
P223();
P236();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P273 in the procedure';
end-proc;