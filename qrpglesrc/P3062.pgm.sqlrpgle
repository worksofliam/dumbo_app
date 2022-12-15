**free

ctl-opt dftactgrp(*no);

dcl-pi P3062;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1959.rpgleinc'
/copy 'qrpgleref/P733.rpgleinc'
/copy 'qrpgleref/P1129.rpgleinc'

dcl-ds T710 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T710 FROM T710 LIMIT 1;

theCharVar = 'Hello from P3062';
dsply theCharVar;
callp localProc();
P1959();
P733();
P1129();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3062 in the procedure';
end-proc;