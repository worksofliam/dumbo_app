**free

ctl-opt dftactgrp(*no);

dcl-pi P333;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P6.rpgleinc'
/copy 'qrpgleref/P163.rpgleinc'
/copy 'qrpgleref/P311.rpgleinc'

dcl-ds T265 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T265 FROM T265 LIMIT 1;

theCharVar = 'Hello from P333';
dsply theCharVar;
callp localProc();
P6();
P163();
P311();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P333 in the procedure';
end-proc;