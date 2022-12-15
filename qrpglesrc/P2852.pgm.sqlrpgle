**free

ctl-opt dftactgrp(*no);

dcl-pi P2852;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P623.rpgleinc'
/copy 'qrpgleref/P2013.rpgleinc'
/copy 'qrpgleref/P2083.rpgleinc'

dcl-ds T319 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T319 FROM T319 LIMIT 1;

theCharVar = 'Hello from P2852';
dsply theCharVar;
callp localProc();
P623();
P2013();
P2083();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2852 in the procedure';
end-proc;