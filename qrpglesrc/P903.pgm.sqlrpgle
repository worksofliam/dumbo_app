**free

ctl-opt dftactgrp(*no);

dcl-pi P903;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P320.rpgleinc'
/copy 'qrpgleref/P793.rpgleinc'
/copy 'qrpgleref/P62.rpgleinc'

dcl-ds T338 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T338 FROM T338 LIMIT 1;

theCharVar = 'Hello from P903';
dsply theCharVar;
callp localProc();
P320();
P793();
P62();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P903 in the procedure';
end-proc;