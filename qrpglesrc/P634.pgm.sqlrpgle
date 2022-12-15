**free

ctl-opt dftactgrp(*no);

dcl-pi P634;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P163.rpgleinc'
/copy 'qrpgleref/P223.rpgleinc'
/copy 'qrpgleref/P308.rpgleinc'

dcl-ds theTable extname('T87') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T87 LIMIT 1;

theCharVar = 'Hello from P634';
dsply theCharVar;
callp localProc();
P163();
P223();
P308();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P634 in the procedure';
end-proc;