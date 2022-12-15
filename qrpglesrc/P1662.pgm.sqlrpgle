**free

ctl-opt dftactgrp(*no);

dcl-pi P1662;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P115.rpgleinc'
/copy 'qrpgleref/P225.rpgleinc'
/copy 'qrpgleref/P1102.rpgleinc'

dcl-ds T142 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T142 FROM T142 LIMIT 1;

theCharVar = 'Hello from P1662';
dsply theCharVar;
callp localProc();
P115();
P225();
P1102();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1662 in the procedure';
end-proc;