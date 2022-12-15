**free

ctl-opt dftactgrp(*no);

dcl-pi P3622;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2004.rpgleinc'
/copy 'qrpgleref/P3317.rpgleinc'
/copy 'qrpgleref/P2721.rpgleinc'

dcl-ds T162 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T162 FROM T162 LIMIT 1;

theCharVar = 'Hello from P3622';
dsply theCharVar;
callp localProc();
P2004();
P3317();
P2721();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3622 in the procedure';
end-proc;