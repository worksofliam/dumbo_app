**free

ctl-opt dftactgrp(*no);

dcl-pi P3130;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1798.rpgleinc'
/copy 'qrpgleref/P2642.rpgleinc'
/copy 'qrpgleref/P325.rpgleinc'

dcl-ds T1763 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1763 FROM T1763 LIMIT 1;

theCharVar = 'Hello from P3130';
dsply theCharVar;
callp localProc();
P1798();
P2642();
P325();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3130 in the procedure';
end-proc;