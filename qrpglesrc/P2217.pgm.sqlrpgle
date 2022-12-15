**free

ctl-opt dftactgrp(*no);

dcl-pi P2217;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P863.rpgleinc'
/copy 'qrpgleref/P1491.rpgleinc'
/copy 'qrpgleref/P382.rpgleinc'

dcl-ds T630 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T630 FROM T630 LIMIT 1;

theCharVar = 'Hello from P2217';
dsply theCharVar;
callp localProc();
P863();
P1491();
P382();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2217 in the procedure';
end-proc;