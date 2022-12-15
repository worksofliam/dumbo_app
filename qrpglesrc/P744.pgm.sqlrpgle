**free

ctl-opt dftactgrp(*no);

dcl-pi P744;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P284.rpgleinc'
/copy 'qrpgleref/P104.rpgleinc'
/copy 'qrpgleref/P507.rpgleinc'

dcl-ds T332 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T332 FROM T332 LIMIT 1;

theCharVar = 'Hello from P744';
dsply theCharVar;
P284();
P104();
P507();
return;