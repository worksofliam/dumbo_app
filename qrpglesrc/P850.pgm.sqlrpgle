**free

ctl-opt dftactgrp(*no);

dcl-pi P850;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P701.rpgleinc'
/copy 'qrpgleref/P46.rpgleinc'
/copy 'qrpgleref/P647.rpgleinc'

dcl-ds T1633 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1633 FROM T1633 LIMIT 1;

theCharVar = 'Hello from P850';
dsply theCharVar;
callp localProc();
P701();
P46();
P647();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P850 in the procedure';
end-proc;