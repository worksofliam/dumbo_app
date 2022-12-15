**free

ctl-opt dftactgrp(*no);

dcl-pi P738;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P545.rpgleinc'
/copy 'qrpgleref/P667.rpgleinc'
/copy 'qrpgleref/P198.rpgleinc'

dcl-ds T1258 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1258 FROM T1258 LIMIT 1;

theCharVar = 'Hello from P738';
dsply theCharVar;
callp localProc();
P545();
P667();
P198();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P738 in the procedure';
end-proc;