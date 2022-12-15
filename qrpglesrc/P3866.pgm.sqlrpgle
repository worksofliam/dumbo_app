**free

ctl-opt dftactgrp(*no);

dcl-pi P3866;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P916.rpgleinc'
/copy 'qrpgleref/P1385.rpgleinc'
/copy 'qrpgleref/P3679.rpgleinc'

dcl-ds T1124 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1124 FROM T1124 LIMIT 1;

theCharVar = 'Hello from P3866';
dsply theCharVar;
callp localProc();
P916();
P1385();
P3679();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3866 in the procedure';
end-proc;