**free

ctl-opt dftactgrp(*no);

dcl-pi P3610;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P239.rpgleinc'
/copy 'qrpgleref/P3372.rpgleinc'
/copy 'qrpgleref/P1396.rpgleinc'

dcl-ds T1095 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1095 FROM T1095 LIMIT 1;

theCharVar = 'Hello from P3610';
dsply theCharVar;
callp localProc();
P239();
P3372();
P1396();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3610 in the procedure';
end-proc;