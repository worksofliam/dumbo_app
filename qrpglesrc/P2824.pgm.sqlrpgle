**free

ctl-opt dftactgrp(*no);

dcl-pi P2824;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2735.rpgleinc'
/copy 'qrpgleref/P2723.rpgleinc'
/copy 'qrpgleref/P2312.rpgleinc'

dcl-ds T1644 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1644 FROM T1644 LIMIT 1;

theCharVar = 'Hello from P2824';
dsply theCharVar;
P2735();
P2723();
P2312();
return;