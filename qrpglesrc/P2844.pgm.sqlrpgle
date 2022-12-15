**free

ctl-opt dftactgrp(*no);

dcl-pi P2844;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P234.rpgleinc'
/copy 'qrpgleref/P2281.rpgleinc'
/copy 'qrpgleref/P328.rpgleinc'

dcl-ds T1722 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1722 FROM T1722 LIMIT 1;

theCharVar = 'Hello from P2844';
dsply theCharVar;
callp localProc();
P234();
P2281();
P328();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2844 in the procedure';
end-proc;