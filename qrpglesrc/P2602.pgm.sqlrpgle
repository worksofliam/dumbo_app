**free

ctl-opt dftactgrp(*no);

dcl-pi P2602;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2504.rpgleinc'
/copy 'qrpgleref/P443.rpgleinc'
/copy 'qrpgleref/P1982.rpgleinc'

dcl-ds T835 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T835 FROM T835 LIMIT 1;

theCharVar = 'Hello from P2602';
dsply theCharVar;
P2504();
P443();
P1982();
return;