**free

ctl-opt dftactgrp(*no);

dcl-pi P3340;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P696.rpgleinc'
/copy 'qrpgleref/P2874.rpgleinc'
/copy 'qrpgleref/P1899.rpgleinc'

dcl-ds T662 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T662 FROM T662 LIMIT 1;

theCharVar = 'Hello from P3340';
dsply theCharVar;
P696();
P2874();
P1899();
return;