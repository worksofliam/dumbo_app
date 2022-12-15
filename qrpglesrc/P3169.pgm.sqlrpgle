**free

ctl-opt dftactgrp(*no);

dcl-pi P3169;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2945.rpgleinc'
/copy 'qrpgleref/P1738.rpgleinc'
/copy 'qrpgleref/P232.rpgleinc'

dcl-ds T1520 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1520 FROM T1520 LIMIT 1;

theCharVar = 'Hello from P3169';
dsply theCharVar;
callp localProc();
P2945();
P1738();
P232();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3169 in the procedure';
end-proc;