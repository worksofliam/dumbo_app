**free

ctl-opt dftactgrp(*no);

dcl-pi P1464;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P477.rpgleinc'
/copy 'qrpgleref/P820.rpgleinc'
/copy 'qrpgleref/P904.rpgleinc'

dcl-ds T699 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T699 FROM T699 LIMIT 1;

theCharVar = 'Hello from P1464';
dsply theCharVar;
callp localProc();
P477();
P820();
P904();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1464 in the procedure';
end-proc;