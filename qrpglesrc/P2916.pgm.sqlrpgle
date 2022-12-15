**free

ctl-opt dftactgrp(*no);

dcl-pi P2916;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1897.rpgleinc'
/copy 'qrpgleref/P861.rpgleinc'
/copy 'qrpgleref/P1667.rpgleinc'

dcl-ds theTable extname('T1246') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1246 LIMIT 1;

theCharVar = 'Hello from P2916';
dsply theCharVar;
callp localProc();
P1897();
P861();
P1667();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2916 in the procedure';
end-proc;