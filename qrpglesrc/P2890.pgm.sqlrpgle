**free

ctl-opt dftactgrp(*no);

dcl-pi P2890;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2555.rpgleinc'
/copy 'qrpgleref/P78.rpgleinc'
/copy 'qrpgleref/P2139.rpgleinc'

dcl-ds T200 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T200 FROM T200 LIMIT 1;

theCharVar = 'Hello from P2890';
dsply theCharVar;
P2555();
P78();
P2139();
return;