**free

ctl-opt dftactgrp(*no);

dcl-pi P1222;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P428.rpgleinc'
/copy 'qrpgleref/P680.rpgleinc'
/copy 'qrpgleref/P416.rpgleinc'

dcl-ds T742 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T742 FROM T742 LIMIT 1;

theCharVar = 'Hello from P1222';
dsply theCharVar;
callp localProc();
P428();
P680();
P416();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1222 in the procedure';
end-proc;