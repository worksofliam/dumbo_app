**free

ctl-opt dftactgrp(*no);

dcl-pi P2157;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1074.rpgleinc'
/copy 'qrpgleref/P890.rpgleinc'
/copy 'qrpgleref/P1392.rpgleinc'

dcl-ds T305 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T305 FROM T305 LIMIT 1;

theCharVar = 'Hello from P2157';
dsply theCharVar;
P1074();
P890();
P1392();
return;