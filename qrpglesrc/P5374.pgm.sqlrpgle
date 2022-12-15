**free

ctl-opt dftactgrp(*no);

dcl-pi P5374;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4924.rpgleinc'
/copy 'qrpgleref/P2693.rpgleinc'
/copy 'qrpgleref/P4906.rpgleinc'

dcl-ds T319 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T319 FROM T319 LIMIT 1;

theCharVar = 'Hello from P5374';
dsply theCharVar;
callp localProc();
P4924();
P2693();
P4906();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5374 in the procedure';
end-proc;