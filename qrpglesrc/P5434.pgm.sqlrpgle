**free

ctl-opt dftactgrp(*no);

dcl-pi P5434;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1473.rpgleinc'
/copy 'qrpgleref/P3062.rpgleinc'
/copy 'qrpgleref/P982.rpgleinc'

dcl-ds T1659 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1659 FROM T1659 LIMIT 1;

theCharVar = 'Hello from P5434';
dsply theCharVar;
callp localProc();
P1473();
P3062();
P982();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5434 in the procedure';
end-proc;