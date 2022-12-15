**free

ctl-opt dftactgrp(*no);

dcl-pi P2882;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2190.rpgleinc'
/copy 'qrpgleref/P2778.rpgleinc'
/copy 'qrpgleref/P865.rpgleinc'

dcl-ds T1765 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1765 FROM T1765 LIMIT 1;

theCharVar = 'Hello from P2882';
dsply theCharVar;
P2190();
P2778();
P865();
return;