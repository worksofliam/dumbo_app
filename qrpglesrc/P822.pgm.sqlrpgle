**free

ctl-opt dftactgrp(*no);

dcl-pi P822;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P113.rpgleinc'
/copy 'qrpgleref/P6.rpgleinc'
/copy 'qrpgleref/P467.rpgleinc'

dcl-ds T782 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T782 FROM T782 LIMIT 1;

theCharVar = 'Hello from P822';
dsply theCharVar;
callp localProc();
P113();
P6();
P467();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P822 in the procedure';
end-proc;