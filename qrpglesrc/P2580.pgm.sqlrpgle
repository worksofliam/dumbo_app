**free

ctl-opt dftactgrp(*no);

dcl-pi P2580;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1368.rpgleinc'
/copy 'qrpgleref/P1309.rpgleinc'
/copy 'qrpgleref/P2494.rpgleinc'

dcl-ds T815 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T815 FROM T815 LIMIT 1;

theCharVar = 'Hello from P2580';
dsply theCharVar;
P1368();
P1309();
P2494();
return;