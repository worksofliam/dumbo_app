**free

ctl-opt dftactgrp(*no);

dcl-pi P922;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P542.rpgleinc'
/copy 'qrpgleref/P273.rpgleinc'
/copy 'qrpgleref/P3.rpgleinc'

dcl-ds theTable extname('T145') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T145 LIMIT 1;

theCharVar = 'Hello from P922';
dsply theCharVar;
callp localProc();
P542();
P273();
P3();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P922 in the procedure';
end-proc;