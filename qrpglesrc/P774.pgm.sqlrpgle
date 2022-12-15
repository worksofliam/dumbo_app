**free

ctl-opt dftactgrp(*no);

dcl-pi P774;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P602.rpgleinc'
/copy 'qrpgleref/P198.rpgleinc'
/copy 'qrpgleref/P235.rpgleinc'

dcl-ds T586 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T586 FROM T586 LIMIT 1;

theCharVar = 'Hello from P774';
dsply theCharVar;
P602();
P198();
P235();
return;