**free

ctl-opt dftactgrp(*no);

dcl-pi P2173;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P176.rpgleinc'
/copy 'qrpgleref/P1524.rpgleinc'
/copy 'qrpgleref/P595.rpgleinc'

dcl-ds T577 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T577 FROM T577 LIMIT 1;

theCharVar = 'Hello from P2173';
dsply theCharVar;
P176();
P1524();
P595();
return;