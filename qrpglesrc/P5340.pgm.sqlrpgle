**free

ctl-opt dftactgrp(*no);

dcl-pi P5340;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4223.rpgleinc'
/copy 'qrpgleref/P1177.rpgleinc'
/copy 'qrpgleref/P1860.rpgleinc'

dcl-ds T84 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T84 FROM T84 LIMIT 1;

theCharVar = 'Hello from P5340';
dsply theCharVar;
P4223();
P1177();
P1860();
return;