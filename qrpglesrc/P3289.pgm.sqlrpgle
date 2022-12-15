**free

ctl-opt dftactgrp(*no);

dcl-pi P3289;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2888.rpgleinc'
/copy 'qrpgleref/P2418.rpgleinc'
/copy 'qrpgleref/P176.rpgleinc'

dcl-ds T1472 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1472 FROM T1472 LIMIT 1;

theCharVar = 'Hello from P3289';
dsply theCharVar;
P2888();
P2418();
P176();
return;