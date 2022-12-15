**free

ctl-opt dftactgrp(*no);

dcl-pi P4829;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2238.rpgleinc'
/copy 'qrpgleref/P1946.rpgleinc'
/copy 'qrpgleref/P1269.rpgleinc'

dcl-ds T548 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T548 FROM T548 LIMIT 1;

theCharVar = 'Hello from P4829';
dsply theCharVar;
callp localProc();
P2238();
P1946();
P1269();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4829 in the procedure';
end-proc;