**free

ctl-opt dftactgrp(*no);

dcl-pi P3970;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3504.rpgleinc'
/copy 'qrpgleref/P1742.rpgleinc'
/copy 'qrpgleref/P3195.rpgleinc'

dcl-ds T604 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T604 FROM T604 LIMIT 1;

theCharVar = 'Hello from P3970';
dsply theCharVar;
callp localProc();
P3504();
P1742();
P3195();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3970 in the procedure';
end-proc;