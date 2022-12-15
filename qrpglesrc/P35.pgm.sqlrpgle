**free

ctl-opt dftactgrp(*no);

dcl-pi P35;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P34.rpgleinc'
/copy 'qrpgleref/P7.rpgleinc'
/copy 'qrpgleref/P18.rpgleinc'

dcl-ds theTable extname('T203') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T203 LIMIT 1;

theCharVar = 'Hello from P35';
dsply theCharVar;
callp localProc();
P34();
P7();
P18();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P35 in the procedure';
end-proc;