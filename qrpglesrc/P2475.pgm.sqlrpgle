**free

ctl-opt dftactgrp(*no);

dcl-pi P2475;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P397.rpgleinc'
/copy 'qrpgleref/P645.rpgleinc'
/copy 'qrpgleref/P104.rpgleinc'

dcl-ds T741 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T741 FROM T741 LIMIT 1;

theCharVar = 'Hello from P2475';
dsply theCharVar;
P397();
P645();
P104();
return;