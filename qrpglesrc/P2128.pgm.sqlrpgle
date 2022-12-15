**free

ctl-opt dftactgrp(*no);

dcl-pi P2128;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1260.rpgleinc'
/copy 'qrpgleref/P251.rpgleinc'
/copy 'qrpgleref/P1761.rpgleinc'

dcl-ds T178 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T178 FROM T178 LIMIT 1;

theCharVar = 'Hello from P2128';
dsply theCharVar;
P1260();
P251();
P1761();
return;