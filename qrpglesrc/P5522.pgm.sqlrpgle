**free

ctl-opt dftactgrp(*no);

dcl-pi P5522;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2808.rpgleinc'
/copy 'qrpgleref/P5238.rpgleinc'
/copy 'qrpgleref/P3100.rpgleinc'

dcl-ds T1152 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1152 FROM T1152 LIMIT 1;

theCharVar = 'Hello from P5522';
dsply theCharVar;
P2808();
P5238();
P3100();
return;