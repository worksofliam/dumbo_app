**free

ctl-opt dftactgrp(*no);

dcl-pi P2401;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P405.rpgleinc'
/copy 'qrpgleref/P2091.rpgleinc'
/copy 'qrpgleref/P1549.rpgleinc'

dcl-ds T742 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T742 FROM T742 LIMIT 1;

theCharVar = 'Hello from P2401';
dsply theCharVar;
P405();
P2091();
P1549();
return;