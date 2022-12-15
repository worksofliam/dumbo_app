**free

ctl-opt dftactgrp(*no);

dcl-pi P2866;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2078.rpgleinc'
/copy 'qrpgleref/P723.rpgleinc'
/copy 'qrpgleref/P941.rpgleinc'

dcl-ds T1237 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1237 FROM T1237 LIMIT 1;

theCharVar = 'Hello from P2866';
dsply theCharVar;
callp localProc();
P2078();
P723();
P941();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2866 in the procedure';
end-proc;