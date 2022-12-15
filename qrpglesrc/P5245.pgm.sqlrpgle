**free

ctl-opt dftactgrp(*no);

dcl-pi P5245;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1171.rpgleinc'
/copy 'qrpgleref/P1901.rpgleinc'
/copy 'qrpgleref/P397.rpgleinc'

dcl-ds T711 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T711 FROM T711 LIMIT 1;

theCharVar = 'Hello from P5245';
dsply theCharVar;
P1171();
P1901();
P397();
return;