**free

ctl-opt dftactgrp(*no);

dcl-pi P156;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P62.rpgleinc'
/copy 'qrpgleref/P106.rpgleinc'
/copy 'qrpgleref/P66.rpgleinc'

dcl-ds T785 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T785 FROM T785 LIMIT 1;

theCharVar = 'Hello from P156';
dsply theCharVar;
P62();
P106();
P66();
return;