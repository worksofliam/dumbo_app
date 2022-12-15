**free

ctl-opt dftactgrp(*no);

dcl-pi P802;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P67.rpgleinc'
/copy 'qrpgleref/P658.rpgleinc'
/copy 'qrpgleref/P89.rpgleinc'

dcl-ds T1040 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1040 FROM T1040 LIMIT 1;

theCharVar = 'Hello from P802';
dsply theCharVar;
callp localProc();
P67();
P658();
P89();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P802 in the procedure';
end-proc;