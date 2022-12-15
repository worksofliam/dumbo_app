**free

ctl-opt dftactgrp(*no);

dcl-pi P2710;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P303.rpgleinc'
/copy 'qrpgleref/P842.rpgleinc'
/copy 'qrpgleref/P2226.rpgleinc'

dcl-ds T113 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T113 FROM T113 LIMIT 1;

theCharVar = 'Hello from P2710';
dsply theCharVar;
callp localProc();
P303();
P842();
P2226();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2710 in the procedure';
end-proc;