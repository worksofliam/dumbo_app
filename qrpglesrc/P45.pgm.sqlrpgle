**free

ctl-opt dftactgrp(*no);

dcl-pi P45;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P22.rpgleinc'
/copy 'qrpgleref/P33.rpgleinc'
/copy 'qrpgleref/P13.rpgleinc'

dcl-ds T484 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T484 FROM T484 LIMIT 1;

theCharVar = 'Hello from P45';
dsply theCharVar;
callp localProc();
P22();
P33();
P13();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P45 in the procedure';
end-proc;