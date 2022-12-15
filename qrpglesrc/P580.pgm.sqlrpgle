**free

ctl-opt dftactgrp(*no);

dcl-pi P580;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P286.rpgleinc'
/copy 'qrpgleref/P423.rpgleinc'
/copy 'qrpgleref/P163.rpgleinc'

dcl-ds T170 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T170 FROM T170 LIMIT 1;

theCharVar = 'Hello from P580';
dsply theCharVar;
callp localProc();
P286();
P423();
P163();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P580 in the procedure';
end-proc;