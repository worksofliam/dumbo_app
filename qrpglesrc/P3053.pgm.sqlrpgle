**free

ctl-opt dftactgrp(*no);

dcl-pi P3053;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P596.rpgleinc'
/copy 'qrpgleref/P862.rpgleinc'
/copy 'qrpgleref/P525.rpgleinc'

dcl-ds T1077 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1077 FROM T1077 LIMIT 1;

theCharVar = 'Hello from P3053';
dsply theCharVar;
callp localProc();
P596();
P862();
P525();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3053 in the procedure';
end-proc;