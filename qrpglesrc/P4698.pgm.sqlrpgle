**free

ctl-opt dftactgrp(*no);

dcl-pi P4698;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3407.rpgleinc'
/copy 'qrpgleref/P2639.rpgleinc'
/copy 'qrpgleref/P3117.rpgleinc'

dcl-ds T317 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T317 FROM T317 LIMIT 1;

theCharVar = 'Hello from P4698';
dsply theCharVar;
callp localProc();
P3407();
P2639();
P3117();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4698 in the procedure';
end-proc;