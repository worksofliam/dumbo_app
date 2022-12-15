**free

ctl-opt dftactgrp(*no);

dcl-pi P3761;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3054.rpgleinc'
/copy 'qrpgleref/P2418.rpgleinc'
/copy 'qrpgleref/P2700.rpgleinc'

dcl-ds T1842 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1842 FROM T1842 LIMIT 1;

theCharVar = 'Hello from P3761';
dsply theCharVar;
callp localProc();
P3054();
P2418();
P2700();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3761 in the procedure';
end-proc;