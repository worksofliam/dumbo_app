**free

ctl-opt dftactgrp(*no);

dcl-pi P5108;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4054.rpgleinc'
/copy 'qrpgleref/P5106.rpgleinc'
/copy 'qrpgleref/P2488.rpgleinc'

dcl-ds T645 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T645 FROM T645 LIMIT 1;

theCharVar = 'Hello from P5108';
dsply theCharVar;
P4054();
P5106();
P2488();
return;