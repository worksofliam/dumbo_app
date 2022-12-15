**free

ctl-opt dftactgrp(*no);

dcl-pi P3406;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2309.rpgleinc'
/copy 'qrpgleref/P2734.rpgleinc'
/copy 'qrpgleref/P1897.rpgleinc'

dcl-ds T134 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T134 FROM T134 LIMIT 1;

theCharVar = 'Hello from P3406';
dsply theCharVar;
P2309();
P2734();
P1897();
return;