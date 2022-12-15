**free

ctl-opt dftactgrp(*no);

dcl-pi P5615;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3634.rpgleinc'
/copy 'qrpgleref/P1950.rpgleinc'
/copy 'qrpgleref/P616.rpgleinc'

dcl-ds T46 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T46 FROM T46 LIMIT 1;

theCharVar = 'Hello from P5615';
dsply theCharVar;
P3634();
P1950();
P616();
return;