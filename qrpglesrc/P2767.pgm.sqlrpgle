**free

ctl-opt dftactgrp(*no);

dcl-pi P2767;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P616.rpgleinc'
/copy 'qrpgleref/P2350.rpgleinc'
/copy 'qrpgleref/P557.rpgleinc'

dcl-ds T938 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T938 FROM T938 LIMIT 1;

theCharVar = 'Hello from P2767';
dsply theCharVar;
callp localProc();
P616();
P2350();
P557();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2767 in the procedure';
end-proc;