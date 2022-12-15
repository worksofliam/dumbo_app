**free

ctl-opt dftactgrp(*no);

dcl-pi P21;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P19.rpgleinc'
/copy 'qrpgleref/P15.rpgleinc'
/copy 'qrpgleref/P0.rpgleinc'

dcl-ds T550 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T550 FROM T550 LIMIT 1;

theCharVar = 'Hello from P21';
dsply theCharVar;
callp localProc();
P19();
P15();
P0();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P21 in the procedure';
end-proc;