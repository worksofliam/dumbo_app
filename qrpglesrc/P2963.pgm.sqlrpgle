**free

ctl-opt dftactgrp(*no);

dcl-pi P2963;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2031.rpgleinc'
/copy 'qrpgleref/P262.rpgleinc'
/copy 'qrpgleref/P2686.rpgleinc'

dcl-ds theTable extname('T578') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T578 LIMIT 1;

theCharVar = 'Hello from P2963';
dsply theCharVar;
callp localProc();
P2031();
P262();
P2686();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2963 in the procedure';
end-proc;