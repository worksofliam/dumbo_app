**free

ctl-opt dftactgrp(*no);

dcl-pi P3000;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2688.rpgleinc'
/copy 'qrpgleref/P316.rpgleinc'
/copy 'qrpgleref/P716.rpgleinc'

dcl-ds T1708 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1708 FROM T1708 LIMIT 1;

theCharVar = 'Hello from P3000';
dsply theCharVar;
P2688();
P316();
P716();
return;