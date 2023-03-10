**free

ctl-opt dftactgrp(*no);

dcl-pi P4693;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P669.rpgleinc'
/copy 'qrpgleref/P1516.rpgleinc'
/copy 'qrpgleref/P328.rpgleinc'

dcl-ds theTable extname('T739') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T739 LIMIT 1;

theCharVar = 'Hello from P4693';
dsply theCharVar;
callp localProc();
P669();
P1516();
P328();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4693 in the procedure';
end-proc;